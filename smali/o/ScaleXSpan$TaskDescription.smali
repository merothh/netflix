.class public final Lo/ScaleXSpan$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TextClassificationSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ScaleXSpan;->c()Lo/TextClassificationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/ScaleXSpan;


# direct methods
.method constructor <init>(Lo/ScaleXSpan;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lo/ScaleXSpan$TaskDescription;->d:Lo/ScaleXSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 3

    .line 60
    iget-object v0, p0, Lo/ScaleXSpan$TaskDescription;->d:Lo/ScaleXSpan;

    invoke-static {v0}, Lo/ScaleXSpan;->d(Lo/ScaleXSpan;)Lcom/netflix/android/moneyball/FlowMode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lo/ScaleXSpan$TaskDescription;->d:Lo/ScaleXSpan;

    invoke-virtual {v2, v0}, Lo/ScaleXSpan;->e(Lcom/netflix/android/moneyball/FlowMode;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
