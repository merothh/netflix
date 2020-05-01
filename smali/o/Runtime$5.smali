.class Lo/Runtime$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Runtime;->d(Lo/PendingIntent$Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Runtime;


# direct methods
.method constructor <init>(Lo/Runtime;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/Runtime$5;->d:Lo/Runtime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/Runtime$5;->d:Lo/Runtime;

    iput p2, v0, Lo/Runtime;->c:I

    const/4 p2, -0x1

    .line 93
    invoke-virtual {v0, p1, p2}, Lo/Runtime;->onClick(Landroid/content/DialogInterface;I)V

    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
