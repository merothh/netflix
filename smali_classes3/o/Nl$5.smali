.class final Lo/Nl$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nl;-><init>(Landroid/view/View;Lo/UpdateEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Nl;


# direct methods
.method constructor <init>(Lo/Nl;)V
    .locals 0

    iput-object p1, p0, Lo/Nl$5;->d:Lo/Nl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 133
    iget-object v0, p0, Lo/Nl$5;->d:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object v0

    if-eqz v0, :cond_0

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Lo/Nh;->d(I)V

    :cond_0
    return-void
.end method
