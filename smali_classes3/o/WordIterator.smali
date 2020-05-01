.class public Lo/WordIterator;
.super Lo/RSAOtherPrimeInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WordIterator$TaskDescription;
    }
.end annotation


# instance fields
.field private final c:Lo/RSAOtherPrimeInfo;


# direct methods
.method public constructor <init>(Lo/RSAOtherPrimeInfo;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Lo/RSAOtherPrimeInfo;-><init>()V

    .line 32
    iput-object p1, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    .line 33
    new-instance v0, Lo/WordIterator$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/WordIterator$TaskDescription;-><init>(Lo/WordIterator;Lo/WordIterator$1;)V

    invoke-virtual {p1, v0}, Lo/RSAOtherPrimeInfo;->b(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Parcelable;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0}, Lo/RSAOtherPrimeInfo;->a()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1, p2}, Lo/RSAOtherPrimeInfo;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1}, Lo/RSAOtherPrimeInfo;->a(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1}, Lo/RSAOtherPrimeInfo;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1, p2, p3}, Lo/RSAOtherPrimeInfo;->a(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1}, Lo/RSAOtherPrimeInfo;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1, p2, p3}, Lo/RSAOtherPrimeInfo;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 103
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1}, Lo/RSAOtherPrimeInfo;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public b(I)Ljava/lang/CharSequence;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1}, Lo/RSAOtherPrimeInfo;->b(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1, p2}, Lo/RSAOtherPrimeInfo;->b(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 107
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0}, Lo/RSAOtherPrimeInfo;->b()V

    return-void
.end method

.method public b(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1}, Lo/RSAOtherPrimeInfo;->b(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1, p2, p3}, Lo/RSAOtherPrimeInfo;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public c(I)F
    .locals 1

    .line 127
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1}, Lo/RSAOtherPrimeInfo;->c(I)F

    move-result p1

    return p1
.end method

.method c()V
    .locals 0

    .line 111
    invoke-super {p0}, Lo/RSAOtherPrimeInfo;->b()V

    return-void
.end method

.method public c(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1, p2, p3}, Lo/RSAOtherPrimeInfo;->c(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 42
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0}, Lo/RSAOtherPrimeInfo;->d()I

    move-result v0

    return v0
.end method

.method public d(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1, p2}, Lo/RSAOtherPrimeInfo;->d(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public e()Lo/RSAOtherPrimeInfo;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    return-object v0
.end method

.method public e(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1}, Lo/RSAOtherPrimeInfo;->e(Landroid/view/View;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1}, Lo/RSAOtherPrimeInfo;->e(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public e(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lo/WordIterator;->c:Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, p1, p2}, Lo/RSAOtherPrimeInfo;->e(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
