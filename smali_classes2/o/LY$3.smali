.class Lo/LY$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LY;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/LY;


# direct methods
.method constructor <init>(Lo/LY;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lo/LY$3;->e:Lo/LY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 140
    iget-object p1, p0, Lo/LY$3;->e:Lo/LY;

    invoke-virtual {p1}, Lo/LY;->getActivity()Lo/Serializable;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.service.ACTION_CLOSE_CAST_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/Serializable;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
