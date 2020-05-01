.class public final Lo/Tile;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lo/ScheduleCalendar;)Lo/PersistentDataBlockManager;
    .locals 1

    const-string v0, "editPaymentView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lo/PersistentDataBlockManager;

    invoke-direct {v0, p1}, Lo/PersistentDataBlockManager;-><init>(Lo/ScheduleCalendar;)V

    return-object v0
.end method
