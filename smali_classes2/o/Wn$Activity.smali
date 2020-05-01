.class public final Lo/Wn$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Wn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final b:Lcom/netflix/mediaclient/android/app/Status;

.field private final c:Lo/Tv;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/app/Status;Lo/Tv;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Wn$Activity;->b:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p2, p0, Lo/Wn$Activity;->c:Lo/Tv;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/netflix/mediaclient/android/app/Status;Lo/Tv;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 104
    check-cast p2, Lo/Tv;

    :cond_0
    invoke-direct {p0, p1, p2}, Lo/Wn$Activity;-><init>(Lcom/netflix/mediaclient/android/app/Status;Lo/Tv;)V

    return-void
.end method


# virtual methods
.method public final a()Lo/Tv;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/Wn$Activity;->c:Lo/Tv;

    return-object v0
.end method
