.class Lo/Re$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Re;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Re;


# direct methods
.method constructor <init>(Lo/Re;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lo/Re$1;->d:Lo/Re;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 138
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
