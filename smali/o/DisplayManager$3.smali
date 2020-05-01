.class Lo/DisplayManager$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Dictionary;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DisplayManager;->a(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Lo/Dictionary;
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
.field final synthetic a:Lo/InputManagerInternal;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lo/DisplayManager;

.field final synthetic d:Lo/BrightnessChangeEvent;

.field final synthetic e:Lo/HdmiTimerRecordSources;


# direct methods
.method constructor <init>(Lo/DisplayManager;Lo/InputManagerInternal;Ljava/lang/String;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lo/DisplayManager$3;->c:Lo/DisplayManager;

    iput-object p2, p0, Lo/DisplayManager$3;->a:Lo/InputManagerInternal;

    iput-object p3, p0, Lo/DisplayManager$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lo/DisplayManager$3;->d:Lo/BrightnessChangeEvent;

    iput-object p5, p0, Lo/DisplayManager$3;->e:Lo/HdmiTimerRecordSources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/HashSet;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lo/DisplayManager$3;->b(Lo/HashSet;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo/HashSet;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HashSet<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 92
    invoke-static {p1}, Lo/DisplayManager;->c(Lo/HashSet;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DiskCacheProducer"

    if-eqz v0, :cond_0

    .line 93
    iget-object p1, p0, Lo/DisplayManager$3;->a:Lo/InputManagerInternal;

    iget-object v0, p0, Lo/DisplayManager$3;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v1}, Lo/InputManagerInternal;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    iget-object p1, p0, Lo/DisplayManager$3;->d:Lo/BrightnessChangeEvent;

    invoke-interface {p1}, Lo/BrightnessChangeEvent;->c()V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Lo/HashSet;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lo/DisplayManager$3;->a:Lo/InputManagerInternal;

    iget-object v3, p0, Lo/DisplayManager$3;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lo/HashSet;->j()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v3, v2, p1, v1}, Lo/InputManagerInternal;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 97
    iget-object p1, p0, Lo/DisplayManager$3;->c:Lo/DisplayManager;

    invoke-static {p1}, Lo/DisplayManager;->d(Lo/DisplayManager;)Lo/InputDeviceIdentifier;

    move-result-object p1

    iget-object v0, p0, Lo/DisplayManager$3;->d:Lo/BrightnessChangeEvent;

    iget-object v2, p0, Lo/DisplayManager$3;->e:Lo/HdmiTimerRecordSources;

    invoke-interface {p1, v0, v2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p1}, Lo/HashSet;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LegacyFaceDetectMapper;

    if-eqz p1, :cond_2

    .line 101
    iget-object v0, p0, Lo/DisplayManager$3;->a:Lo/InputManagerInternal;

    iget-object v3, p0, Lo/DisplayManager$3;->b:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->o()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v0, v3, v5, v4}, Lo/DisplayManager;->e(Lo/InputManagerInternal;Ljava/lang/String;ZI)Ljava/util/Map;

    move-result-object v4

    .line 101
    invoke-interface {v0, v3, v2, v4}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    iget-object v0, p0, Lo/DisplayManager$3;->a:Lo/InputManagerInternal;

    iget-object v3, p0, Lo/DisplayManager$3;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v5}, Lo/InputManagerInternal;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    iget-object v0, p0, Lo/DisplayManager$3;->d:Lo/BrightnessChangeEvent;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v2}, Lo/BrightnessChangeEvent;->c(F)V

    .line 107
    iget-object v0, p0, Lo/DisplayManager$3;->d:Lo/BrightnessChangeEvent;

    invoke-interface {v0, p1, v5}, Lo/BrightnessChangeEvent;->d(Ljava/lang/Object;I)V

    .line 108
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->close()V

    goto :goto_0

    .line 110
    :cond_2
    iget-object p1, p0, Lo/DisplayManager$3;->a:Lo/InputManagerInternal;

    iget-object v0, p0, Lo/DisplayManager$3;->b:Ljava/lang/String;

    const/4 v3, 0x0

    .line 113
    invoke-static {p1, v0, v3, v3}, Lo/DisplayManager;->e(Lo/InputManagerInternal;Ljava/lang/String;ZI)Ljava/util/Map;

    move-result-object v3

    .line 110
    invoke-interface {p1, v0, v2, v3}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    iget-object p1, p0, Lo/DisplayManager$3;->c:Lo/DisplayManager;

    invoke-static {p1}, Lo/DisplayManager;->d(Lo/DisplayManager;)Lo/InputDeviceIdentifier;

    move-result-object p1

    iget-object v0, p0, Lo/DisplayManager$3;->d:Lo/BrightnessChangeEvent;

    iget-object v2, p0, Lo/DisplayManager$3;->e:Lo/HdmiTimerRecordSources;

    invoke-interface {p1, v0, v2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    :goto_0
    return-object v1
.end method
