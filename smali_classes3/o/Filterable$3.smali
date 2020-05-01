.class public final Lo/Filterable$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Filterable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Filterable;


# direct methods
.method constructor <init>(Lo/Filterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lo/Filterable$3;->a:Lo/Filterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lo/Filterable$3;->a:Lo/Filterable;

    invoke-static {v0}, Lo/Filterable;->a(Lo/Filterable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lo/Filterable$3;->a:Lo/Filterable;

    invoke-static {v0}, Lo/Filterable;->c(Lo/Filterable;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 93
    :cond_0
    iget-object p1, p0, Lo/Filterable$3;->a:Lo/Filterable;

    invoke-static {p1}, Lo/Filterable;->b(Lo/Filterable;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 94
    iget-object p2, p0, Lo/Filterable$3;->a:Lo/Filterable;

    invoke-static {p2}, Lo/Filterable;->c(Lo/Filterable;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p2

    instance-of p3, p2, Lo/Filterable$TaskDescription;

    if-nez p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    check-cast p2, Lo/Filterable$TaskDescription;

    if-eqz p2, :cond_2

    iget-object p3, p0, Lo/Filterable$3;->a:Lo/Filterable;

    invoke-interface {p2, p3, p1}, Lo/Filterable$TaskDescription;->b(Lo/Filterable;I)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lo/Filterable$3;->a:Lo/Filterable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/Filterable;->b(Lo/Filterable;Z)V

    .line 101
    iget-object v0, p0, Lo/Filterable$3;->a:Lo/Filterable;

    invoke-static {v0}, Lo/Filterable;->c(Lo/Filterable;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lo/Filterable$3;->a:Lo/Filterable;

    invoke-static {v0}, Lo/Filterable;->a(Lo/Filterable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lo/Filterable$3;->a:Lo/Filterable;

    invoke-static {v0}, Lo/Filterable;->c(Lo/Filterable;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
