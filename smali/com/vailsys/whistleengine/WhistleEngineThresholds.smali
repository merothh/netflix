.class public Lcom/vailsys/whistleengine/WhistleEngineThresholds;
.super Ljava/lang/Object;
.source "WhistleEngineThresholds.java"


# instance fields
.field private jitter:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

.field private packetLoss:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

.field private rtt:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

.field private sip:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    invoke-direct {v0, p0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;-><init>(Lcom/vailsys/whistleengine/WhistleEngineThresholds;)V

    iput-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->sip:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    invoke-direct {v0, p0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;-><init>(Lcom/vailsys/whistleengine/WhistleEngineThresholds;)V

    iput-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->rtt:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    invoke-direct {v0, p0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;-><init>(Lcom/vailsys/whistleengine/WhistleEngineThresholds;)V

    iput-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->jitter:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    invoke-direct {v0, p0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;-><init>(Lcom/vailsys/whistleengine/WhistleEngineThresholds;)V

    iput-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->packetLoss:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    return-void
.end method


# virtual methods
.method public getJitterThreshold()Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->jitter:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    return-object v0
.end method

.method public getPacketLossThreshold()Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->packetLoss:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    return-object v0
.end method

.method public getRTTThreshold()Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->rtt:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    return-object v0
.end method

.method public getSIPThreshold()Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->sip:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    return-object v0
.end method

.method public setJitterThreshold(II)V
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->jitter:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    invoke-static {v0, p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->access$000(Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;I)V

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->jitter:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    invoke-static {v0, p2}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->access$100(Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;I)V

    return-void
.end method

.method public setPacketLossThreshold(II)V
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->packetLoss:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    invoke-static {v0, p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->access$000(Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;I)V

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->packetLoss:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    invoke-static {v0, p2}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->access$100(Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;I)V

    return-void
.end method

.method public setRTTThreshold(II)V
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->rtt:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    invoke-static {v0, p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->access$000(Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;I)V

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->rtt:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    invoke-static {v0, p2}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->access$100(Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;I)V

    return-void
.end method

.method public setSIPThreshold(II)V
    .locals 1

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->sip:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    invoke-static {v0, p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->access$000(Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;I)V

    iget-object v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->sip:Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;

    invoke-static {v0, p2}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->access$100(Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;I)V

    return-void
.end method
