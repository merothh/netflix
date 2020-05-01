.class public final Lo/DJ$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zD;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DJ;->c(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Am;


# direct methods
.method constructor <init>(Lo/Am;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lo/DJ$Application;->e:Lo/Am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lo/DJ$Application;->e:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->A()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .line 197
    iget-object v0, p0, Lo/DJ$Application;->e:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->z()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lo/DJ$Application;->e:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->C()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 201
    iget-object v0, p0, Lo/DJ$Application;->e:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->F()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
