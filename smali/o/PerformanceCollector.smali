.class public Lo/PerformanceCollector;
.super Lo/ServiceManager;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x800003

    .line 11
    invoke-direct {p0, v0}, Lo/ServiceManager;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lo/ParcelableParcel;Lo/PooledStringWriter;)V
    .locals 6

    .line 17
    invoke-virtual {p2}, Lo/PooledStringWriter;->e()I

    move-result v2

    .line 18
    invoke-virtual {p2}, Lo/PooledStringWriter;->a()I

    move-result v3

    .line 19
    invoke-virtual {p2}, Lo/PooledStringWriter;->d()I

    move-result v4

    .line 20
    invoke-virtual {p2}, Lo/PooledStringWriter;->m()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 15
    invoke-super/range {v0 .. v5}, Lo/ServiceManager;->c(Landroidx/recyclerview/widget/RecyclerView;IIII)V

    return-void
.end method
