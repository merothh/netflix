.class public final Lo/Voice;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/SystemTextClassifier;

.field private final d:Lo/TtsEngines;

.field private final e:Lo/SynthesisCallback;


# direct methods
.method public constructor <init>(Lo/SystemTextClassifier;Lo/SynthesisCallback;Lo/TtsEngines;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "signupErrorReporter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFieldViewModelCacheSynchronizer"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFieldViewModelFactory"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Voice;->b:Lo/SystemTextClassifier;

    iput-object p2, p0, Lo/Voice;->e:Lo/SynthesisCallback;

    iput-object p3, p0, Lo/Voice;->d:Lo/TtsEngines;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)Lo/SynthesisRequest;
    .locals 7

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lo/SynthesisRequest;

    .line 13
    iget-object v2, p0, Lo/Voice;->e:Lo/SynthesisCallback;

    .line 14
    iget-object v3, p0, Lo/Voice;->d:Lo/TtsEngines;

    .line 17
    iget-object v6, p0, Lo/Voice;->b:Lo/SystemTextClassifier;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    .line 12
    invoke-direct/range {v1 .. v6}, Lo/SynthesisRequest;-><init>(Lo/SynthesisCallback;Lo/TtsEngines;Ljava/lang/String;Ljava/lang/String;Lo/SystemTextClassifier;)V

    return-object v0
.end method
