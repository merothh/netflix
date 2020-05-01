.class public final Lo/UP$Uri;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Uri"
.end annotation


# instance fields
.field private final e:Landroid/view/WindowInsets;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 1

    const-string v0, "windowInsets"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$Uri;->e:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final c()Landroid/view/WindowInsets;
    .locals 1

    .line 168
    iget-object v0, p0, Lo/UP$Uri;->e:Landroid/view/WindowInsets;

    return-object v0
.end method
