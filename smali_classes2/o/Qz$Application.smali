.class final Lo/Qz$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Qz;->a(Lo/BC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Qz;

.field final synthetic e:Lo/BC;


# direct methods
.method constructor <init>(Lo/Qz;Lo/BC;)V
    .locals 0

    iput-object p1, p0, Lo/Qz$Application;->d:Lo/Qz;

    iput-object p2, p0, Lo/Qz$Application;->e:Lo/BC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 120
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    invoke-virtual {v0}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    if-eqz v0, :cond_0

    .line 121
    new-instance v1, Lo/KeyCharacteristics;

    iget-object v2, p0, Lo/Qz$Application;->e:Lo/BC;

    invoke-interface {v2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "profile.profileGuid"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lo/KeyCharacteristics;-><init>(Ljava/lang/String;IILo/amc;)V

    check-cast v1, Lo/SettingsValidators;

    .line 122
    new-instance v2, Lo/Qz$Application$Application;

    invoke-direct {v2, p0}, Lo/Qz$Application$Application;-><init>(Lo/Qz$Application;)V

    check-cast v2, Lo/ci;

    .line 121
    invoke-interface {v0, v1, v2}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    :cond_0
    return-void
.end method
