#ifndef AVE_AUDIO_DEVICE_H
#define AVE_AUDIO_DEVICE_H

namespace ave{

class AudioDeviceCallback
{
public:
	// if Non-active Voice detected, size is set to zero
	virtual int input(const int16_t *samples, int size) = 0;
};


class AudioDevice
{
	//create();
	//list_input_devices(std::vector<std::string> *devices);
	//list_output_devices(std::vector<std::string> *devices);
	//init_recorder, callback record(samples)
	//init_player, automatically start when first play(samples)
	//start_recorder
	//stop_recorder
};

}; // namespace ave

#endif
