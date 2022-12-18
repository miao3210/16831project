#!/bin/bash

echo ModelBasedRL
python rob831/scripts/run_hw4_mb.py --exp_name q5_cheetah_cem_4 --env_name 'LunarLander' \
--mpc_horizon 15 --add_sl_noise --num_agent_train_steps_per_iter 1500 \
--batch_size_initial 5000 --batch_size 5000 --n_iter 5 --video_log_freq -1 --mpc_action_sampling_strategy 'cem' --cem_iterations 4 -gpu_id=1

exit 0

echo 5

python rob831/scripts/run_hw4_mb.py --exp_name q5_cheetah_cem_4 --env_name 'cheetah-rob831-v0' \
--mpc_horizon 15 --add_sl_noise --num_agent_train_steps_per_iter 1500 \
--batch_size_initial 5000 --batch_size 5000 --n_iter 5 --video_log_freq -1 --mpc_action_sampling_strategy 'cem' --cem_iterations 4 -gpu_id=1
exit 0

python rob831/scripts/run_hw4_mb.py --exp_name q5_cheetah_cem_2 --env_name 'cheetah-rob831-v0' \
--mpc_horizon 15 --add_sl_noise --num_agent_train_steps_per_iter 1500 \
--batch_size_initial 5000 --batch_size 5000 --n_iter 5 --video_log_freq -1 --mpc_action_sampling_strategy 'cem' --cem_iterations 2  --no_gpu -ngpu

exit 0

python rob831/scripts/run_hw4_mb.py --exp_name q5_cheetah_random --env_name 'cheetah-rob831-v0' \
--mpc_horizon 15 --add_sl_noise --num_agent_train_steps_per_iter 1500 \
--batch_size_initial 5000 --batch_size 5000 --n_iter 5 --video_log_freq -1 --mpc_action_sampling_strategy 'random' --no_gpu -ngpu