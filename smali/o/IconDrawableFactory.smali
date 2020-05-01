.class public final Lo/IconDrawableFactory;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Lo/FeatureFlagUtils;


# direct methods
.method public constructor <init>(Lo/FeatureFlagUtils;)V
    .locals 1

    const-string v0, "deviceSurveyDeviceContainer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/IconDrawableFactory;->d:Lo/FeatureFlagUtils;

    return-void
.end method


# virtual methods
.method public final b(Lo/LauncherIcons;)V
    .locals 1

    const-string v0, "deviceSurveySelectorViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lo/IconDrawableFactory;->d:Lo/FeatureFlagUtils;

    invoke-virtual {p1}, Lo/LauncherIcons;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/FeatureFlagUtils;->c(Ljava/util/List;)V

    return-void
.end method
