.class final Lo/TextClassifierImpl$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TextClassifierImpl;->d(Ljava/lang/String;Lo/cb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lo/cb;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/cb;)V
    .locals 0

    iput-object p1, p0, Lo/TextClassifierImpl$Activity;->d:Ljava/lang/String;

    iput-object p2, p0, Lo/TextClassifierImpl$Activity;->e:Lo/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 2

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lo/Am;->n()Lo/cc;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/TextClassifierImpl$Activity;->d:Ljava/lang/String;

    iget-object v1, p0, Lo/TextClassifierImpl$Activity;->e:Lo/cb;

    invoke-interface {p1, v0, v1}, Lo/cc;->b(Ljava/lang/String;Lo/cb;)V

    :cond_0
    return-void
.end method
