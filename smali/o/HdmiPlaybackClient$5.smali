.class Lo/HdmiPlaybackClient$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Dictionary;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HdmiPlaybackClient;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/MacAuthenticatedInputStream;)Lo/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Dictionary<",
        "Lo/LegacyFaceDetectMapper;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/HdmiTimerRecordSources;

.field final synthetic b:Lo/InputManagerInternal;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lo/BrightnessChangeEvent;

.field final synthetic e:Lo/MacAuthenticatedInputStream;

.field final synthetic i:Lo/HdmiPlaybackClient;


# direct methods
.method constructor <init>(Lo/HdmiPlaybackClient;Lo/InputManagerInternal;Ljava/lang/String;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/MacAuthenticatedInputStream;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lo/HdmiPlaybackClient$5;->i:Lo/HdmiPlaybackClient;

    iput-object p2, p0, Lo/HdmiPlaybackClient$5;->b:Lo/InputManagerInternal;

    iput-object p3, p0, Lo/HdmiPlaybackClient$5;->c:Ljava/lang/String;

    iput-object p4, p0, Lo/HdmiPlaybackClient$5;->d:Lo/BrightnessChangeEvent;

    iput-object p5, p0, Lo/HdmiPlaybackClient$5;->a:Lo/HdmiTimerRecordSources;

    iput-object p6, p0, Lo/HdmiPlaybackClient$5;->e:Lo/MacAuthenticatedInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/HashSet;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lo/HdmiPlaybackClient$5;->b(Lo/HashSet;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/HashSet;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HashSet<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lo/HdmiPlaybackClient;->a(Lo/HashSet;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PartialDiskCacheProducer"

    if-eqz v0, :cond_0

    .line 111
    iget-object p1, p0, Lo/HdmiPlaybackClient$5;->b:Lo/InputManagerInternal;

    iget-object v0, p0, Lo/HdmiPlaybackClient$5;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v1}, Lo/InputManagerInternal;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    iget-object p1, p0, Lo/HdmiPlaybackClient$5;->d:Lo/BrightnessChangeEvent;

    invoke-interface {p1}, Lo/BrightnessChangeEvent;->c()V

    goto/16 :goto_0

    .line 113
    :cond_0
    invoke-virtual {p1}, Lo/HashSet;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lo/HdmiPlaybackClient$5;->b:Lo/InputManagerInternal;

    iget-object v3, p0, Lo/HdmiPlaybackClient$5;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lo/HashSet;->j()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v3, v2, p1, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 115
    iget-object p1, p0, Lo/HdmiPlaybackClient$5;->i:Lo/HdmiPlaybackClient;

    iget-object v0, p0, Lo/HdmiPlaybackClient$5;->d:Lo/BrightnessChangeEvent;

    iget-object v2, p0, Lo/HdmiPlaybackClient$5;->a:Lo/HdmiTimerRecordSources;

    iget-object v3, p0, Lo/HdmiPlaybackClient$5;->e:Lo/MacAuthenticatedInputStream;

    invoke-static {p1, v0, v2, v3, v1}, Lo/HdmiPlaybackClient;->b(Lo/HdmiPlaybackClient;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V

    goto/16 :goto_0

    .line 117
    :cond_1
    invoke-virtual {p1}, Lo/HashSet;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LegacyFaceDetectMapper;

    if-eqz p1, :cond_3

    .line 119
    iget-object v0, p0, Lo/HdmiPlaybackClient$5;->b:Lo/InputManagerInternal;

    iget-object v3, p0, Lo/HdmiPlaybackClient$5;->c:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->o()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v3, v5, v4}, Lo/HdmiPlaybackClient;->a(Lo/InputManagerInternal;Ljava/lang/String;ZI)Ljava/util/Map;

    move-result-object v4

    .line 119
    invoke-interface {v0, v3, v2, v4}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->o()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v0}, Lo/BiometricFingerprintConstants;->b(I)Lo/BiometricFingerprintConstants;

    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Lo/LegacyFaceDetectMapper;->c(Lo/BiometricFingerprintConstants;)V

    .line 127
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->o()I

    move-result v3

    .line 128
    iget-object v4, p0, Lo/HdmiPlaybackClient$5;->a:Lo/HdmiTimerRecordSources;

    invoke-interface {v4}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v4

    .line 130
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/request/ImageRequest;->g()Lo/BiometricFingerprintConstants;

    move-result-object v6

    invoke-virtual {v0, v6}, Lo/BiometricFingerprintConstants;->d(Lo/BiometricFingerprintConstants;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lo/HdmiPlaybackClient$5;->b:Lo/InputManagerInternal;

    iget-object v3, p0, Lo/HdmiPlaybackClient$5;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v5}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    iget-object v0, p0, Lo/HdmiPlaybackClient$5;->d:Lo/BrightnessChangeEvent;

    const/16 v2, 0x9

    invoke-interface {v0, p1, v2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lo/HdmiPlaybackClient$5;->d:Lo/BrightnessChangeEvent;

    const/16 v2, 0x8

    invoke-interface {v0, p1, v2}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    .line 137
    invoke-static {v4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    sub-int/2addr v3, v5

    .line 138
    invoke-static {v3}, Lo/BiometricFingerprintConstants;->a(I)Lo/BiometricFingerprintConstants;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e(Lo/BiometricFingerprintConstants;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->t()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 140
    new-instance v2, Lo/ActivityChangedEvent;

    iget-object v3, p0, Lo/HdmiPlaybackClient$5;->a:Lo/HdmiTimerRecordSources;

    invoke-direct {v2, v0, v3}, Lo/ActivityChangedEvent;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Lo/HdmiTimerRecordSources;)V

    .line 143
    iget-object v0, p0, Lo/HdmiPlaybackClient$5;->i:Lo/HdmiPlaybackClient;

    iget-object v3, p0, Lo/HdmiPlaybackClient$5;->d:Lo/BrightnessChangeEvent;

    iget-object v4, p0, Lo/HdmiPlaybackClient$5;->e:Lo/MacAuthenticatedInputStream;

    invoke-static {v0, v3, v2, v4, p1}, Lo/HdmiPlaybackClient;->b(Lo/HdmiPlaybackClient;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lo/HdmiPlaybackClient$5;->b:Lo/InputManagerInternal;

    iget-object v3, p0, Lo/HdmiPlaybackClient$5;->c:Ljava/lang/String;

    const/4 v4, 0x0

    .line 153
    invoke-static {v0, v3, v4, v4}, Lo/HdmiPlaybackClient;->a(Lo/InputManagerInternal;Ljava/lang/String;ZI)Ljava/util/Map;

    move-result-object v4

    .line 150
    invoke-interface {v0, v3, v2, v4}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    iget-object v0, p0, Lo/HdmiPlaybackClient$5;->i:Lo/HdmiPlaybackClient;

    iget-object v2, p0, Lo/HdmiPlaybackClient$5;->d:Lo/BrightnessChangeEvent;

    iget-object v3, p0, Lo/HdmiPlaybackClient$5;->a:Lo/HdmiTimerRecordSources;

    iget-object v4, p0, Lo/HdmiPlaybackClient$5;->e:Lo/MacAuthenticatedInputStream;

    invoke-static {v0, v2, v3, v4, p1}, Lo/HdmiPlaybackClient;->b(Lo/HdmiPlaybackClient;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V

    :goto_0
    return-object v1
.end method
