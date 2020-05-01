.class Lo/JI$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JI;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/JI;


# direct methods
.method constructor <init>(Lo/JI;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lo/JI$4;->c:Lo/JI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lo/JI$4;->c:Lo/JI;

    invoke-virtual {p1}, Lo/JI;->dismiss()V

    return-void
.end method
