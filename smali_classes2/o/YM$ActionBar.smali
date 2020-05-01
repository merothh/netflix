.class final Lo/YM$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YM;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/YM;


# direct methods
.method constructor <init>(Lo/YM;)V
    .locals 0

    iput-object p1, p0, Lo/YM$ActionBar;->d:Lo/YM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lo/YM$ActionBar;->d:Lo/YM;

    invoke-virtual {p1}, Lo/YM;->finish()V

    return-void
.end method
