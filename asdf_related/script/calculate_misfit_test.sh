mkdir -p /mnt/scratch/xiziyi/validation/misfit_test/$1
python ../validation/get_misfit_from_windowpicker.py --data_fname /mnt/scratch/xiziyi/validation/data_simple_test/201207091925A.preprocessed_20s_to_120s.h5 --sync_fname /mnt/scratch/xiziyi/validation/sync_test/$1_processed/201207091925080.preprocessed_20s_to_120s.h5 --win_fname /mnt/scratch/xiziyi/validation/win_test/201207091925A.txt --output_fname /mnt/scratch/xiziyi/validation/misfit_test/$1/201207091925A.preprocessed_20s_to_120s.pkl