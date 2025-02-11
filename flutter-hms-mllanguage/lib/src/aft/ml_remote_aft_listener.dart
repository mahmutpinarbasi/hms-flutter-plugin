/*
    Copyright 2021-2024. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License")
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0
        
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

part of '../../huawei_ml_language.dart';

class MLRemoteAftListener {
  /// Called if an audio transcription error occurs.
  void Function(String taskId, int errCode, String errMsg) onError;

  /// Reserved for long audio.
  void Function(String taskId, int eventId) onEvent;

  /// Reserved for long audio.
  void Function(String taskId) onInitComplete;

  /// Called when the audio transcription result is returned on the cloud.
  void Function(String taskId, MLRemoteAftResult result) onResult;

  /// Reserved for long audio.
  Function(String taskId, double progress) onUploadProgress;

  MLRemoteAftListener(
    this.onError,
    this.onEvent,
    this.onInitComplete,
    this.onResult,
    this.onUploadProgress,
  );
}
