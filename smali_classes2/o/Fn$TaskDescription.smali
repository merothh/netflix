.class final Lo/Fn$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fn;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Fn;


# direct methods
.method constructor <init>(Lo/Fn;)V
    .locals 0

    iput-object p1, p0, Lo/Fn$TaskDescription;->b:Lo/Fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lo/Fn$TaskDescription;->b:Lo/Fn;

    sget-object v0, Lo/DG$TaskDescription;->d:Lo/DG$TaskDescription;

    invoke-virtual {p1, v0}, Lo/Fn;->e(Ljava/lang/Object;)V

    return-void
.end method
