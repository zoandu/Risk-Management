namespace RiskManagement;

using { API_BUSINESS_PARTNER.A_BusinessPartner } from '../srv/external/API_BUSINESS_PARTNER';

entity Risks
{
    title : String(100);
    prio : String(5);
    descr : String(100);
    impact : Integer;
    criticality : Integer;
    key ID : UUID;
    mitigations : Association to one Mitigations;
    supplier : Association to one A_BusinessPartner;
}

entity Mitigations
{
    key ID : UUID;
    createdAt : String(100);
    createdBy : String(100);
    description : String(100);
    owner : String(100);
    timeline : String(100);
    risks : Association to many Risks on risks.mitigations = $self;
}
