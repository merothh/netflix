.class public final Lo/FrameLayout;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static final a(Landroid/widget/ImageView$ScaleType;)Lo/SQLiteReadOnlyDatabaseException$Activity;
    .locals 1

    .line 462
    sget-object v0, Lo/Gallery;->e:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 486
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->f:Lo/SQLiteReadOnlyDatabaseException$Activity;

    goto :goto_0

    .line 483
    :pswitch_1
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->i:Lo/SQLiteReadOnlyDatabaseException$Activity;

    goto :goto_0

    .line 480
    :pswitch_2
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->e:Lo/SQLiteReadOnlyDatabaseException$Activity;

    goto :goto_0

    .line 477
    :pswitch_3
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->a:Lo/SQLiteReadOnlyDatabaseException$Activity;

    goto :goto_0

    .line 474
    :pswitch_4
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->d:Lo/SQLiteReadOnlyDatabaseException$Activity;

    goto :goto_0

    .line 471
    :pswitch_5
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->b:Lo/SQLiteReadOnlyDatabaseException$Activity;

    goto :goto_0

    .line 468
    :pswitch_6
    sget-object p0, Lo/SQLiteReadOnlyDatabaseException$Activity;->c:Lo/SQLiteReadOnlyDatabaseException$Activity;

    goto :goto_0

    :pswitch_7
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic c(Landroid/widget/ImageView$ScaleType;)Lo/SQLiteReadOnlyDatabaseException$Activity;
    .locals 0

    .line 1
    invoke-static {p0}, Lo/FrameLayout;->a(Landroid/widget/ImageView$ScaleType;)Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object p0

    return-object p0
.end method
