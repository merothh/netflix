.class Lo/JR$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JR;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/JR;


# direct methods
.method constructor <init>(Lo/JR;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lo/JR$5;->d:Lo/JR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 1

    .line 151
    invoke-virtual {p1}, Lo/Am;->j()Lo/Ah;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lo/JR$5;->d:Lo/JR;

    invoke-interface {p1}, Lo/Ah;->e()Lo/Ab;

    move-result-object p1

    invoke-static {v0, p1}, Lo/JR;->e(Lo/JR;Lo/Ab;)Lo/Ab;

    :cond_0
    return-void
.end method
