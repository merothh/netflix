.class public final Lo/Nl$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ii$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nl;-><init>(Landroid/view/View;Lo/UpdateEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Nl;


# direct methods
.method constructor <init>(Lo/Nl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lo/Nl$4;->a:Lo/Nl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lo/Nl$4;->a:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->e(Lo/Nl;)Lo/Nh;

    move-result-object v0

    .line 280
    instance-of v1, v0, Lo/Nh;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/Nh;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/Nh;->k()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, v1, v3}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 281
    iget-object p1, p0, Lo/Nl$4;->a:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->d(Lo/Nl;)Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Retry"

    invoke-virtual {p1, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 284
    :cond_1
    iget-object p1, p0, Lo/Nl$4;->a:Lo/Nl;

    invoke-static {p1}, Lo/Nl;->d(Lo/Nl;)Lo/ServiceManagerNative;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "No retry"

    invoke-virtual {p1, v0}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v2
.end method
