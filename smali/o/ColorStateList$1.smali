.class Lo/ColorStateList$1;
.super Lo/InvalidClassException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ColorStateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field final synthetic d:Lo/ColorStateList;


# direct methods
.method constructor <init>(Lo/ColorStateList;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lo/ColorStateList$1;->d:Lo/ColorStateList;

    invoke-direct {p0}, Lo/InvalidClassException;-><init>()V

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lo/ColorStateList$1;->a:Z

    .line 123
    iput p1, p0, Lo/ColorStateList$1;->b:I

    return-void
.end method


# virtual methods
.method e()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lo/ColorStateList$1;->b:I

    .line 138
    iput-boolean v0, p0, Lo/ColorStateList$1;->a:Z

    .line 139
    iget-object v0, p0, Lo/ColorStateList$1;->d:Lo/ColorStateList;

    invoke-virtual {v0}, Lo/ColorStateList;->a()V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 144
    iget p1, p0, Lo/ColorStateList$1;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/ColorStateList$1;->b:I

    iget-object v0, p0, Lo/ColorStateList$1;->d:Lo/ColorStateList;

    iget-object v0, v0, Lo/ColorStateList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 145
    iget-object p1, p0, Lo/ColorStateList$1;->d:Lo/ColorStateList;

    iget-object p1, p1, Lo/ColorStateList;->e:Lo/InputStreamReader;

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lo/ColorStateList$1;->d:Lo/ColorStateList;

    iget-object p1, p1, Lo/ColorStateList;->e:Lo/InputStreamReader;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/InputStreamReader;->onAnimationEnd(Landroid/view/View;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lo/ColorStateList$1;->e()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-boolean p1, p0, Lo/ColorStateList$1;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lo/ColorStateList$1;->a:Z

    .line 131
    iget-object p1, p0, Lo/ColorStateList$1;->d:Lo/ColorStateList;

    iget-object p1, p1, Lo/ColorStateList;->e:Lo/InputStreamReader;

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lo/ColorStateList$1;->d:Lo/ColorStateList;

    iget-object p1, p1, Lo/ColorStateList;->e:Lo/InputStreamReader;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/InputStreamReader;->onAnimationStart(Landroid/view/View;)V

    :cond_1
    return-void
.end method
