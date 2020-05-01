.class final Lo/FillContext$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FillContext;->e(Landroid/os/Handler;Lo/cm;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/cm;

.field final synthetic d:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/cm;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    iput-object p1, p0, Lo/FillContext$Application;->b:Lo/cm;

    iput-object p2, p0, Lo/FillContext$Application;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 60
    iget-object v0, p0, Lo/FillContext$Application;->b:Lo/cm;

    iget-object v1, p0, Lo/FillContext$Application;->d:Lcom/netflix/mediaclient/android/app/Status;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lo/cm;->e(Ljava/lang/Object;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
