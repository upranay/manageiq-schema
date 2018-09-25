class NamespaceEmsTelefonica < ActiveRecord::Migration[5.0]
  include MigrationHelper

  NAME_MAP = Hash[*%w(
    ProviderTelefonica                       ManageIQ::Providers::Telefonica::Provider

    EmsTelefonica                            ManageIQ::Providers::Telefonica::CloudManager
    AuthKeyPairTelefonica                    ManageIQ::Providers::Telefonica::CloudManager::AuthKeyPair
    AvailabilityZoneTelefonica               ManageIQ::Providers::Telefonica::CloudManager::AvailabilityZone
    AvailabilityZoneTelefonicaNull           ManageIQ::Providers::Telefonica::CloudManager::AvailabilityZoneNull
    CloudResourceQuotaTelefonica             ManageIQ::Providers::Telefonica::CloudManager::CloudResourceQuota
    CloudTenantTelefonica                    ManageIQ::Providers::Telefonica::CloudManager::CloudTenant
    CloudVolumeTelefonica                    ManageIQ::Providers::Telefonica::CloudManager::CloudVolume
    CloudVolumeSnapshotTelefonica            ManageIQ::Providers::Telefonica::CloudManager::CloudVolumeSnapshot
    MiqEventCatcherTelefonica                ManageIQ::Providers::Telefonica::CloudManager::EventCatcher
    EventCatcherTelefonica                   ManageIQ::Providers::Telefonica::CloudManager::EventCatcher::Runner
    FlavorTelefonica                         ManageIQ::Providers::Telefonica::CloudManager::Flavor
    FloatingIpTelefonica                     ManageIQ::Providers::Telefonica::CloudManager::FloatingIp
    MiqEmsMetricsCollectorWorkerTelefonica   ManageIQ::Providers::Telefonica::CloudManager::MetricsCollectorWorker
    EmsMetricsCollectorWorkerTelefonica      ManageIQ::Providers::Telefonica::CloudManager::MetricsCollectorWorker::Runner
    OrchestrationStackTelefonica             ManageIQ::Providers::Telefonica::CloudManager::OrchestrationStack
    MiqEmsRefreshWorkerTelefonica            ManageIQ::Providers::Telefonica::CloudManager::RefreshWorker
    EmsRefreshWorkerTelefonica               ManageIQ::Providers::Telefonica::CloudManager::RefreshWorker::Runner
    SecurityGroupTelefonica                  ManageIQ::Providers::Telefonica::CloudManager::SecurityGroup
    TemplateTelefonica                       ManageIQ::Providers::Telefonica::CloudManager::Template
    VmTelefonica                             ManageIQ::Providers::Telefonica::CloudManager::Vm

    ServiceOrchestration::OptionConverterTelefonica
    ManageIQ::Providers::Telefonica::CloudManager::OrchestrationServiceOptionConverter
  )]

  def change
    rename_class_references(NAME_MAP)
  end
end
