.class final Lo/Fo$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fo;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Fo;


# direct methods
.method constructor <init>(Lo/Fo;)V
    .locals 0

    iput-object p1, p0, Lo/Fo$ActionBar;->c:Lo/Fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 28
    iget-object p1, p0, Lo/Fo$ActionBar;->c:Lo/Fo;

    sget-object v0, Lo/DG$TaskDescription;->d:Lo/DG$TaskDescription;

    invoke-virtual {p1, v0}, Lo/Fo;->e(Ljava/lang/Object;)V

    return-void
.end method
