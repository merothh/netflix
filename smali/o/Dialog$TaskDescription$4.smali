.class Lo/Dialog$TaskDescription$4;
.super Landroid/widget/CursorAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dialog$TaskDescription;->e(Lo/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Dialog$TaskDescription;

.field final synthetic b:Lo/Dialog$Activity;

.field final synthetic c:Lo/Dialog;

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(Lo/Dialog$TaskDescription;Landroid/content/Context;Landroid/database/Cursor;ZLo/Dialog$Activity;Lo/Dialog;)V
    .locals 0

    .line 1009
    iput-object p1, p0, Lo/Dialog$TaskDescription$4;->a:Lo/Dialog$TaskDescription;

    iput-object p5, p0, Lo/Dialog$TaskDescription$4;->b:Lo/Dialog$Activity;

    iput-object p6, p0, Lo/Dialog$TaskDescription$4;->c:Lo/Dialog;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1014
    invoke-virtual {p0}, Lo/Dialog$TaskDescription$4;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 1015
    iget-object p2, p0, Lo/Dialog$TaskDescription$4;->a:Lo/Dialog$TaskDescription;

    iget-object p2, p2, Lo/Dialog$TaskDescription;->J:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lo/Dialog$TaskDescription$4;->d:I

    .line 1016
    iget-object p2, p0, Lo/Dialog$TaskDescription$4;->a:Lo/Dialog$TaskDescription;

    iget-object p2, p2, Lo/Dialog$TaskDescription;->L:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/Dialog$TaskDescription$4;->e:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const p2, 0x1020014

    .line 1021
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 1023
    iget p2, p0, Lo/Dialog$TaskDescription$4;->d:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object p1, p0, Lo/Dialog$TaskDescription$4;->b:Lo/Dialog$Activity;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget v0, p0, Lo/Dialog$TaskDescription$4;->e:I

    .line 1025
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1024
    :goto_0
    invoke-virtual {p1, p2, v0}, Lo/Dialog$Activity;->setItemChecked(IZ)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1030
    iget-object p1, p0, Lo/Dialog$TaskDescription$4;->a:Lo/Dialog$TaskDescription;

    iget-object p1, p1, Lo/Dialog$TaskDescription;->c:Landroid/view/LayoutInflater;

    iget-object p2, p0, Lo/Dialog$TaskDescription$4;->c:Lo/Dialog;

    iget p2, p2, Lo/Dialog;->k:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
