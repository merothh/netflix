.class public final Lo/Wm$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wm;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/String;

.field final synthetic e:Lo/Wm;


# direct methods
.method constructor <init>(Lo/Wm;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lo/Wm$ActionBar;->e:Lo/Wm;

    iput-object p2, p0, Lo/Wm$ActionBar;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 2

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    iget-object v0, p0, Lo/Wm$ActionBar;->c:Ljava/lang/String;

    new-instance v1, Lo/Wm$ActionBar$Application;

    invoke-direct {v1, p0}, Lo/Wm$ActionBar$Application;-><init>(Lo/Wm$ActionBar;)V

    check-cast v1, Lo/zU;

    invoke-interface {p1, v0, v1}, Lo/zG;->d(Ljava/lang/String;Lo/zU;)V

    return-void
.end method
