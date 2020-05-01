.class public final Lo/RSAPrivateKeySpec;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;

.field private final c:Landroidx/viewpager2/widget/ViewPager2;

.field private final d:Lo/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lo/ArrayList;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lo/RSAPrivateKeySpec;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 46
    iput-object p2, p0, Lo/RSAPrivateKeySpec;->d:Lo/ArrayList;

    .line 47
    iput-object p3, p0, Lo/RSAPrivateKeySpec;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lo/RSAPrivateKeySpec;->d:Lo/ArrayList;

    invoke-virtual {v0}, Lo/ArrayList;->d()Z

    move-result v0

    return v0
.end method
