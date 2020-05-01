.class final Lo/SnoozeCriterion$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SnoozeCriterion;->e(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/SnoozeCriterion;


# direct methods
.method constructor <init>(Lo/SnoozeCriterion;)V
    .locals 0

    iput-object p1, p0, Lo/SnoozeCriterion$Activity;->e:Lo/SnoozeCriterion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lo/SnoozeCriterion$Activity;->e:Lo/SnoozeCriterion;

    invoke-virtual {p1}, Lo/SnoozeCriterion;->dismiss()V

    return-void
.end method
