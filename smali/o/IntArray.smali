.class public final Lo/IntArray;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lo/FeatureFlagUtils;)Lo/IconDrawableFactory;
    .locals 1

    const-string v0, "deviceSurveyDeviceContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lo/IconDrawableFactory;

    invoke-direct {v0, p1}, Lo/IconDrawableFactory;-><init>(Lo/FeatureFlagUtils;)V

    return-object v0
.end method
