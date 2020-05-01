.class final Lo/HD$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HD;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/HD;


# direct methods
.method constructor <init>(Lo/HD;)V
    .locals 0

    iput-object p1, p0, Lo/HD$StateListAnimator;->b:Lo/HD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lo/HD$StateListAnimator;->b:Lo/HD;

    invoke-virtual {p1}, Lo/HD;->o()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 25
    iget-object p1, p0, Lo/HD$StateListAnimator;->b:Lo/HD;

    invoke-virtual {p1}, Lo/HD;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->c:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->d:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    .line 26
    :goto_0
    iget-object v0, p0, Lo/HD$StateListAnimator;->b:Lo/HD;

    invoke-static {v0, p1}, Lo/HD;->b(Lo/HD;Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;)V

    :cond_1
    return-void
.end method
