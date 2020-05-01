.class Lo/UnsatisfiedLinkError$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UnsatisfiedLinkError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/UnsatisfiedLinkError;


# direct methods
.method constructor <init>(Lo/UnsatisfiedLinkError;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lo/UnsatisfiedLinkError$1;->a:Lo/UnsatisfiedLinkError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 126
    iget-object v0, p0, Lo/UnsatisfiedLinkError$1;->a:Lo/UnsatisfiedLinkError;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lo/UnsatisfiedLinkError;->d(I)V

    return-void
.end method
