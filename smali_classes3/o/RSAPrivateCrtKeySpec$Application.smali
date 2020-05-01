.class public Lo/RSAPrivateCrtKeySpec$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RSAPrivateCrtKeySpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Application"
.end annotation


# instance fields
.field private a:J

.field private c:Landroidx/viewpager2/widget/ViewPager2;

.field final synthetic e:Lo/RSAPrivateCrtKeySpec;


# virtual methods
.method public e(Z)V
    .locals 9

    .line 672
    iget-object v0, p0, Lo/RSAPrivateCrtKeySpec$Application;->e:Lo/RSAPrivateCrtKeySpec;

    invoke-virtual {v0}, Lo/RSAPrivateCrtKeySpec;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lo/RSAPrivateCrtKeySpec$Application;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->h()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lo/RSAPrivateCrtKeySpec$Application;->e:Lo/RSAPrivateCrtKeySpec;

    iget-object v0, v0, Lo/RSAPrivateCrtKeySpec;->a:Lo/Params;

    invoke-virtual {v0}, Lo/Params;->e()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lo/RSAPrivateCrtKeySpec$Application;->e:Lo/RSAPrivateCrtKeySpec;

    invoke-virtual {v0}, Lo/RSAPrivateCrtKeySpec;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 684
    :cond_2
    iget-object v0, p0, Lo/RSAPrivateCrtKeySpec$Application;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->i()I

    move-result v0

    .line 685
    iget-object v1, p0, Lo/RSAPrivateCrtKeySpec$Application;->e:Lo/RSAPrivateCrtKeySpec;

    invoke-virtual {v1}, Lo/RSAPrivateCrtKeySpec;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    return-void

    .line 691
    :cond_3
    iget-object v1, p0, Lo/RSAPrivateCrtKeySpec$Application;->e:Lo/RSAPrivateCrtKeySpec;

    invoke-virtual {v1, v0}, Lo/RSAPrivateCrtKeySpec;->getItemId(I)J

    move-result-wide v0

    .line 692
    iget-wide v2, p0, Lo/RSAPrivateCrtKeySpec$Application;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    if-nez p1, :cond_4

    return-void

    .line 696
    :cond_4
    iget-object p1, p0, Lo/RSAPrivateCrtKeySpec$Application;->e:Lo/RSAPrivateCrtKeySpec;

    iget-object p1, p1, Lo/RSAPrivateCrtKeySpec;->a:Lo/Params;

    invoke-virtual {p1, v0, v1}, Lo/Params;->c(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_b

    .line 697
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_4

    .line 701
    :cond_5
    iput-wide v0, p0, Lo/RSAPrivateCrtKeySpec$Application;->a:J

    .line 702
    iget-object p1, p0, Lo/RSAPrivateCrtKeySpec$Application;->e:Lo/RSAPrivateCrtKeySpec;

    iget-object p1, p1, Lo/RSAPrivateCrtKeySpec;->b:Lo/SerializablePermission;

    invoke-virtual {p1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 705
    :goto_0
    iget-object v3, p0, Lo/RSAPrivateCrtKeySpec$Application;->e:Lo/RSAPrivateCrtKeySpec;

    iget-object v3, v3, Lo/RSAPrivateCrtKeySpec;->a:Lo/Params;

    invoke-virtual {v3}, Lo/Params;->a()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 706
    iget-object v3, p0, Lo/RSAPrivateCrtKeySpec$Application;->e:Lo/RSAPrivateCrtKeySpec;

    iget-object v3, v3, Lo/RSAPrivateCrtKeySpec;->a:Lo/Params;

    invoke-virtual {v3, v0}, Lo/Params;->d(I)J

    move-result-wide v3

    .line 707
    iget-object v5, p0, Lo/RSAPrivateCrtKeySpec$Application;->e:Lo/RSAPrivateCrtKeySpec;

    iget-object v5, v5, Lo/RSAPrivateCrtKeySpec;->a:Lo/Params;

    invoke-virtual {v5, v0}, Lo/Params;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 709
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    .line 713
    :cond_6
    iget-wide v6, p0, Lo/RSAPrivateCrtKeySpec$Application;->a:J

    cmp-long v8, v3, v6

    if-eqz v8, :cond_7

    .line 714
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v5, v6}, Lo/UnsupportedEncodingException;->d(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Lo/UnsupportedEncodingException;

    goto :goto_1

    :cond_7
    move-object v2, v5

    .line 719
    :goto_1
    iget-wide v6, p0, Lo/RSAPrivateCrtKeySpec$Application;->a:J

    cmp-long v8, v3, v6

    if-nez v8, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_a

    .line 722
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v2, v0}, Lo/UnsupportedEncodingException;->d(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Lo/UnsupportedEncodingException;

    .line 725
    :cond_a
    invoke-virtual {p1}, Lo/UnsupportedEncodingException;->j()Z

    move-result v0

    if-nez v0, :cond_b

    .line 726
    invoke-virtual {p1}, Lo/UnsupportedEncodingException;->e()V

    :cond_b
    :goto_4
    return-void
.end method
