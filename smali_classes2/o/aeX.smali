.class public final Lo/aeX;
.super Lo/ArrayUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aeX$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ArrayUtils<",
        "Lo/DisplayManagerGlobal;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/aeX$Activity;


# instance fields
.field private a:I

.field private e:Lo/FragmentHostCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aeX$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aeX$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/aeX;->b:Lo/aeX$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lo/ArrayUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Lo/DisplayManagerGlobal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")",
            "Lo/DisplayManagerGlobal;"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producerContext"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lo/DisplayManagerGlobal;

    invoke-direct {v0, p1, p2}, Lo/DisplayManagerGlobal;-><init>(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-object v0
.end method

.method public d(Lo/DisplayManagerGlobal;Lo/HdmiRecordListener$StateListAnimator;)V
    .locals 4

    const-string v0, "fetchState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->a()Lo/HdmiTimerRecordSources;

    move-result-object v0

    const-string v1, "fetchState.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/HdmiTimerRecordSources;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lo/afg;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/afg;->e(Ljava/lang/Boolean;)V

    .line 33
    new-instance v0, Lo/aff;

    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->c()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "fetchState.uri"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lo/aeX;->a:I

    invoke-virtual {p1}, Lo/DisplayManagerGlobal;->a()Lo/HdmiTimerRecordSources;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/HdmiTimerRecordSources;->j()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object p1

    const-string v1, "fetchState.context.priority"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v3, p1, p2}, Lo/aff;-><init>(Landroid/net/Uri;ILcom/facebook/imagepipeline/common/Priority;Lo/HdmiRecordListener$StateListAnimator;)V

    .line 34
    iget-object p1, p0, Lo/aeX;->e:Lo/FragmentHostCallback;

    if-nez p1, :cond_0

    const-string p2, "requestQueue"

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Lcom/android/volley/Request;

    invoke-virtual {p1, v0}, Lo/FragmentHostCallback;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void

    .line 31
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.util.gfx.fresco.FrescoRequestContext"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Lo/FragmentHostCallback;I)V
    .locals 1

    const-string v0, "requestQueue"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lo/aeX;->e:Lo/FragmentHostCallback;

    .line 23
    iput p2, p0, Lo/aeX;->a:I

    return-void
.end method
