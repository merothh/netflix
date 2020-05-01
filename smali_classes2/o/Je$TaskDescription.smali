.class public final Lo/Je$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "KidsCharacterFrag"

    .line 30
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/Je$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;I)Landroidx/fragment/app/Fragment;
    .locals 3

    const-string v0, "charId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lo/Je;

    invoke-direct {v0}, Lo/Je;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_chararcter_id"

    .line 38
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_kids_color_id"

    .line 39
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    invoke-virtual {v0, v1}, Lo/Je;->setArguments(Landroid/os/Bundle;)V

    .line 42
    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method
