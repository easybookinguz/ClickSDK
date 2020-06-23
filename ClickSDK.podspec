Pod::Spec.new do |s|
  pod_name = 'ClickSDK'
  framework_filename = "#{pod_name}.framework"
  
  s.name         = pod_name
  s.version      = "0.0.2"
  s.summary      = "A managed payment Click ios SDK"
  s.description  = "A managed payment Click ios SDK that allows iOS developers to create mobile payments in an Click Merchants client application."
  s.homepage     = "https://github.com/easybookinguz/ClickSDK"
  s.license      = { type: "Easybooking Developer License", text: '<<-LICENSE
      Copyright (c) 2020-present, Easybooking, LLC. All rights reserved.
      Your use of this software is subject to the Easybooking Developer Terms of
      Service (https://easybooking.uz/legal/developers). This copyright notice shall
      be included in all copies or substantial portions of the software.
      THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
      THE SOFTWARE.
        LICENSE' }
  s.author       = "Easybooking"
  s.platform     = :ios, "13.0"
  s.ios.deployment_target = "13.0"
  s.source       = { http: "https://github.com/easybookinguz/ClickSDK/releases/download/#{s.version}/#{framework_filename}.zip" }
  s.source_files = "#{framework_filename}/**/*.{h,hh}"
  s.public_header_files = "#{framework_filename}/Headers/*.{h,hh}"
  s.vendored_frameworks = "#{framework_filename}"
end
