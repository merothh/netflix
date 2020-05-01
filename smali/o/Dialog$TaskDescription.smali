.class public Lo/Dialog$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Dialog$TaskDescription$TaskDescription;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Landroid/view/View;

.field public C:I

.field public D:I

.field public E:Z

.field public F:[Z

.field public G:Z

.field public H:I

.field public I:Z

.field public J:Ljava/lang/String;

.field public K:Landroid/database/Cursor;

.field public L:Ljava/lang/String;

.field public M:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public N:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public R:Z

.field public S:Lo/Dialog$TaskDescription$TaskDescription;

.field public a:Landroid/graphics/drawable/Drawable;

.field public b:I

.field public final c:Landroid/view/LayoutInflater;

.field public final d:Landroid/content/Context;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Landroid/content/DialogInterface$OnClickListener;

.field public p:Landroid/content/DialogInterface$OnClickListener;

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Z

.field public s:Landroid/content/DialogInterface$OnCancelListener;

.field public t:Landroid/content/DialogInterface$OnDismissListener;

.field public u:Landroid/widget/ListAdapter;

.field public v:Landroid/content/DialogInterface$OnKeyListener;

.field public w:Landroid/content/DialogInterface$OnClickListener;

.field public x:[Ljava/lang/CharSequence;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 869
    iput v0, p0, Lo/Dialog$TaskDescription;->b:I

    .line 871
    iput v0, p0, Lo/Dialog$TaskDescription;->e:I

    .line 897
    iput-boolean v0, p0, Lo/Dialog$TaskDescription;->I:Z

    const/4 v0, -0x1

    .line 901
    iput v0, p0, Lo/Dialog$TaskDescription;->H:I

    const/4 v0, 0x1

    .line 909
    iput-boolean v0, p0, Lo/Dialog$TaskDescription;->R:Z

    .line 925
    iput-object p1, p0, Lo/Dialog$TaskDescription;->d:Landroid/content/Context;

    .line 926
    iput-boolean v0, p0, Lo/Dialog$TaskDescription;->r:Z

    const-string v0, "layout_inflater"

    .line 927
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lo/Dialog$TaskDescription;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method private e(Lo/Dialog;)V
    .locals 11

    .line 988
    iget-object v0, p0, Lo/Dialog$TaskDescription;->c:Landroid/view/LayoutInflater;

    iget v1, p1, Lo/Dialog;->m:I

    const/4 v2, 0x0

    .line 989
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/Dialog$Activity;

    .line 992
    iget-boolean v1, p0, Lo/Dialog$TaskDescription;->E:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    .line 993
    iget-object v4, p0, Lo/Dialog$TaskDescription;->K:Landroid/database/Cursor;

    if-nez v4, :cond_0

    .line 994
    new-instance v9, Lo/Dialog$TaskDescription$3;

    iget-object v3, p0, Lo/Dialog$TaskDescription;->d:Landroid/content/Context;

    iget v4, p1, Lo/Dialog;->k:I

    const v5, 0x1020014

    iget-object v6, p0, Lo/Dialog$TaskDescription;->x:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lo/Dialog$TaskDescription$3;-><init>(Lo/Dialog$TaskDescription;Landroid/content/Context;II[Ljava/lang/CharSequence;Lo/Dialog$Activity;)V

    goto :goto_1

    .line 1009
    :cond_0
    new-instance v9, Lo/Dialog$TaskDescription$4;

    iget-object v3, p0, Lo/Dialog$TaskDescription;->d:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lo/Dialog$TaskDescription$4;-><init>(Lo/Dialog$TaskDescription;Landroid/content/Context;Landroid/database/Cursor;ZLo/Dialog$Activity;Lo/Dialog;)V

    goto :goto_1

    .line 1038
    :cond_1
    iget-boolean v1, p0, Lo/Dialog$TaskDescription;->G:Z

    if-eqz v1, :cond_2

    .line 1039
    iget v1, p1, Lo/Dialog;->n:I

    goto :goto_0

    .line 1041
    :cond_2
    iget v1, p1, Lo/Dialog;->o:I

    :goto_0
    move v4, v1

    .line 1044
    iget-object v5, p0, Lo/Dialog$TaskDescription;->K:Landroid/database/Cursor;

    const v1, 0x1020014

    if-eqz v5, :cond_3

    .line 1045
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lo/Dialog$TaskDescription;->d:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v2, p0, Lo/Dialog$TaskDescription;->J:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    new-array v10, v8, [I

    aput v1, v10, v7

    move-object v2, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_1

    .line 1047
    :cond_3
    iget-object v9, p0, Lo/Dialog$TaskDescription;->u:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_4

    goto :goto_1

    .line 1050
    :cond_4
    new-instance v9, Lo/Dialog$Application;

    iget-object v2, p0, Lo/Dialog$TaskDescription;->d:Landroid/content/Context;

    iget-object v3, p0, Lo/Dialog$TaskDescription;->x:[Ljava/lang/CharSequence;

    invoke-direct {v9, v2, v4, v1, v3}, Lo/Dialog$Application;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 1054
    :goto_1
    iget-object v1, p0, Lo/Dialog$TaskDescription;->S:Lo/Dialog$TaskDescription$TaskDescription;

    if-eqz v1, :cond_5

    .line 1055
    invoke-interface {v1, v0}, Lo/Dialog$TaskDescription$TaskDescription;->b(Landroid/widget/ListView;)V

    .line 1061
    :cond_5
    iput-object v9, p1, Lo/Dialog;->g:Landroid/widget/ListAdapter;

    .line 1062
    iget v1, p0, Lo/Dialog$TaskDescription;->H:I

    iput v1, p1, Lo/Dialog;->l:I

    .line 1064
    iget-object v1, p0, Lo/Dialog$TaskDescription;->w:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_6

    .line 1065
    new-instance v1, Lo/Dialog$TaskDescription$2;

    invoke-direct {v1, p0, p1}, Lo/Dialog$TaskDescription$2;-><init>(Lo/Dialog$TaskDescription;Lo/Dialog;)V

    invoke-virtual {v0, v1}, Lo/Dialog$Activity;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    .line 1074
    :cond_6
    iget-object v1, p0, Lo/Dialog$TaskDescription;->N:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_7

    .line 1075
    new-instance v1, Lo/Dialog$TaskDescription$5;

    invoke-direct {v1, p0, v0, p1}, Lo/Dialog$TaskDescription$5;-><init>(Lo/Dialog$TaskDescription;Lo/Dialog$Activity;Lo/Dialog;)V

    invoke-virtual {v0, v1}, Lo/Dialog$Activity;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1088
    :cond_7
    :goto_2
    iget-object v1, p0, Lo/Dialog$TaskDescription;->M:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_8

    .line 1089
    invoke-virtual {v0, v1}, Lo/Dialog$Activity;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1092
    :cond_8
    iget-boolean v1, p0, Lo/Dialog$TaskDescription;->G:Z

    if-eqz v1, :cond_9

    .line 1093
    invoke-virtual {v0, v8}, Lo/Dialog$Activity;->setChoiceMode(I)V

    goto :goto_3

    .line 1094
    :cond_9
    iget-boolean v1, p0, Lo/Dialog$TaskDescription;->E:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    .line 1095
    invoke-virtual {v0, v1}, Lo/Dialog$Activity;->setChoiceMode(I)V

    .line 1097
    :cond_a
    :goto_3
    iput-object v0, p1, Lo/Dialog;->c:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public c(Lo/Dialog;)V
    .locals 7

    .line 931
    iget-object v0, p0, Lo/Dialog$TaskDescription;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {p1, v0}, Lo/Dialog;->d(Landroid/view/View;)V

    goto :goto_0

    .line 934
    :cond_0
    iget-object v0, p0, Lo/Dialog$TaskDescription;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 935
    invoke-virtual {p1, v0}, Lo/Dialog;->b(Ljava/lang/CharSequence;)V

    .line 937
    :cond_1
    iget-object v0, p0, Lo/Dialog$TaskDescription;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 938
    invoke-virtual {p1, v0}, Lo/Dialog;->c(Landroid/graphics/drawable/Drawable;)V

    .line 940
    :cond_2
    iget v0, p0, Lo/Dialog$TaskDescription;->b:I

    if-eqz v0, :cond_3

    .line 941
    invoke-virtual {p1, v0}, Lo/Dialog;->c(I)V

    .line 943
    :cond_3
    iget v0, p0, Lo/Dialog$TaskDescription;->e:I

    if-eqz v0, :cond_4

    .line 944
    invoke-virtual {p1, v0}, Lo/Dialog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/Dialog;->c(I)V

    .line 947
    :cond_4
    :goto_0
    iget-object v0, p0, Lo/Dialog$TaskDescription;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 948
    invoke-virtual {p1, v0}, Lo/Dialog;->a(Ljava/lang/CharSequence;)V

    .line 950
    :cond_5
    iget-object v0, p0, Lo/Dialog$TaskDescription;->f:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lo/Dialog$TaskDescription;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    :cond_6
    const/4 v2, -0x1

    .line 951
    iget-object v3, p0, Lo/Dialog$TaskDescription;->f:Ljava/lang/CharSequence;

    iget-object v4, p0, Lo/Dialog$TaskDescription;->n:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lo/Dialog$TaskDescription;->j:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lo/Dialog;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 954
    :cond_7
    iget-object v0, p0, Lo/Dialog$TaskDescription;->m:Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    iget-object v0, p0, Lo/Dialog$TaskDescription;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    :cond_8
    const/4 v2, -0x2

    .line 955
    iget-object v3, p0, Lo/Dialog$TaskDescription;->m:Ljava/lang/CharSequence;

    iget-object v4, p0, Lo/Dialog$TaskDescription;->o:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lo/Dialog$TaskDescription;->l:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lo/Dialog;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 958
    :cond_9
    iget-object v0, p0, Lo/Dialog$TaskDescription;->k:Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Lo/Dialog$TaskDescription;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    :cond_a
    const/4 v2, -0x3

    .line 959
    iget-object v3, p0, Lo/Dialog$TaskDescription;->k:Ljava/lang/CharSequence;

    iget-object v4, p0, Lo/Dialog$TaskDescription;->p:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lo/Dialog$TaskDescription;->q:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lo/Dialog;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 964
    :cond_b
    iget-object v0, p0, Lo/Dialog$TaskDescription;->x:[Ljava/lang/CharSequence;

    if-nez v0, :cond_c

    iget-object v0, p0, Lo/Dialog$TaskDescription;->K:Landroid/database/Cursor;

    if-nez v0, :cond_c

    iget-object v0, p0, Lo/Dialog$TaskDescription;->u:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_d

    .line 965
    :cond_c
    invoke-direct {p0, p1}, Lo/Dialog$TaskDescription;->e(Lo/Dialog;)V

    .line 967
    :cond_d
    iget-object v2, p0, Lo/Dialog$TaskDescription;->B:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 968
    iget-boolean v0, p0, Lo/Dialog$TaskDescription;->I:Z

    if-eqz v0, :cond_e

    .line 969
    iget v3, p0, Lo/Dialog$TaskDescription;->C:I

    iget v4, p0, Lo/Dialog$TaskDescription;->z:I

    iget v5, p0, Lo/Dialog$TaskDescription;->D:I

    iget v6, p0, Lo/Dialog$TaskDescription;->A:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lo/Dialog;->a(Landroid/view/View;IIII)V

    goto :goto_1

    .line 972
    :cond_e
    invoke-virtual {p1, v2}, Lo/Dialog;->c(Landroid/view/View;)V

    goto :goto_1

    .line 974
    :cond_f
    iget v0, p0, Lo/Dialog$TaskDescription;->y:I

    if-eqz v0, :cond_10

    .line 975
    invoke-virtual {p1, v0}, Lo/Dialog;->b(I)V

    :cond_10
    :goto_1
    return-void
.end method
