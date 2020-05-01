.class public final Lo/Oh$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Oh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "MyListButtonUIView"

    .line 127
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lo/Oh$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroid/widget/CompoundButton;)Lo/Od;
    .locals 1

    const-string v0, "myListButton"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lo/Oh;

    invoke-direct {v0, p1}, Lo/Oh;-><init>(Landroid/widget/CompoundButton;)V

    check-cast v0, Lo/Od;

    return-object v0
.end method
