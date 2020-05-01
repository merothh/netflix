.class Lo/acS$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acS;->b(Lo/Ac;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Ac;

.field final synthetic c:Lo/acS;

.field final synthetic e:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lo/acS;Lo/Ac;Landroid/app/Notification;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lo/acS$4;->c:Lo/acS;

    iput-object p2, p0, Lo/acS$4;->a:Lo/Ac;

    iput-object p3, p0, Lo/acS$4;->e:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lo/acS$4;->a:Lo/Ac;

    iget-object v1, p0, Lo/acS$4;->e:Landroid/app/Notification;

    const/16 v2, 0x14

    invoke-interface {v0, v2, v1}, Lo/Ac;->e(ILandroid/app/Notification;)V

    return-void
.end method
