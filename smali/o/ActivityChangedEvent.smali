.class public Lo/ActivityChangedEvent;
.super Lo/VendorTagDescriptorCache;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lo/InputManagerInternal;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p8}, Lo/VendorTagDescriptorCache;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lo/InputManagerInternal;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequest;Lo/HdmiTimerRecordSources;)V
    .locals 9

    .line 35
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v3

    .line 37
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->c()Ljava/lang/Object;

    move-result-object v4

    .line 38
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->a()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v5

    .line 39
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->h()Z

    move-result v6

    .line 40
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->f()Z

    move-result v7

    .line 41
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->j()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    .line 33
    invoke-direct/range {v0 .. v8}, Lo/ActivityChangedEvent;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lo/InputManagerInternal;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    return-void
.end method
