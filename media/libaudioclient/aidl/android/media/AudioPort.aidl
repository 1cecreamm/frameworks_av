/*
 * Copyright (C) 2020 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.media;

import android.media.AudioGainSys;
import android.media.AudioPortConfig;
import android.media.AudioPortExt;
import android.media.AudioPortRole;
import android.media.AudioPortType;
import android.media.AudioProfileSys;
import android.media.ExtraAudioDescriptor;
import android.media.audio.common.AudioGain;
import android.media.audio.common.AudioProfile;

/**
 * {@hide}
 */
parcelable AudioPort {
    /** Port unique ID. Interpreted as audio_port_handle_t. */
    int id;
    /** Sink or source. */
    AudioPortRole role;
    /** Device, mix ... */
    AudioPortType type;
    @utf8InCpp String name;
    /** AudioProfiles supported by this port (format, Rates, Channels). */
    AudioProfile[] profiles;
    /** System-only parameters for each AudioProfile. */
    AudioProfileSys[] profilesSys;
    /**
     * ExtraAudioDescriptors supported by this port. The format is not unrecognized to the
     * platform. The audio capability is described by a hardware descriptor.
     */
    ExtraAudioDescriptor[] extraAudioDescriptors;
    /** Gain controllers. */
    AudioGain[] gains;
    /** System-only parameters for each AudioGain. */
    AudioGainSys[] gainsSys;
    /** Current audio port configuration. */
    AudioPortConfig activeConfig;
    AudioPortExt ext;
}
