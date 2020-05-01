.class Lo/StatFs$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StatFs;-><init>(Landroid/content/Context;Lo/SimpleClock$Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/StatFs;


# direct methods
.method constructor <init>(Lo/StatFs;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lo/StatFs$3;->a:Lo/StatFs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lo/StatFs$3;->a:Lo/StatFs;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/StatFs;->d(Lo/StatFs;Z)V

    return-void
.end method
