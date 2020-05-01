.class Lo/PushbackReader$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PushbackReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/PushbackReader;


# direct methods
.method constructor <init>(Lo/PushbackReader;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lo/PushbackReader$3;->e:Lo/PushbackReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lo/PushbackReader$3;->e:Lo/PushbackReader;

    iget-object v0, v0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lo/PushbackReader$3;->e:Lo/PushbackReader;

    iget-object v1, v0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lo/PushbackReader;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
