.class final Lo/Do$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Do;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;Lo/UpdateEngine;Lio/reactivex/Observable;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Do;


# direct methods
.method constructor <init>(Lo/Do;)V
    .locals 0

    iput-object p1, p0, Lo/Do$3;->b:Lo/Do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lo/Do$3;->b:Lo/Do;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/Do;->a(Lo/Do;Z)V

    return-void
.end method
