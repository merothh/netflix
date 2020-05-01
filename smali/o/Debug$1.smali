.class public final Lo/Debug$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Debug;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lo/Debug;


# direct methods
.method constructor <init>(Lo/Debug;)V
    .locals 0

    iput-object p1, p0, Lo/Debug$1;->c:Lo/Debug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    iget-object p1, p0, Lo/Debug$1;->c:Lo/Debug;

    invoke-static {p1}, Lo/Debug;->e(Lo/Debug;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/Debug$1;->c:Lo/Debug;

    invoke-static {v0}, Lo/Debug;->a(Lo/Debug;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIViewImpl$3$1;

    invoke-direct {v1, p0}, Lcom/netflix/android/mdxpanel/buttons/MdxButtonsUIViewImpl$3$1;-><init>(Lo/Debug$1;)V

    check-cast v1, Lo/alN;

    invoke-static {p1, v0, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method
