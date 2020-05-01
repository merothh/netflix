.class Lo/RecoverySystem$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecoverySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/RecoverySystem;


# direct methods
.method constructor <init>(Lo/RecoverySystem;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/RecoverySystem$2;->c:Lo/RecoverySystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 28
    iget-object v0, p0, Lo/RecoverySystem$2;->c:Lo/RecoverySystem;

    invoke-static {v0}, Lo/RecoverySystem;->a(Lo/RecoverySystem;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/RecoverySystem;->e(Z)V

    return-void
.end method
