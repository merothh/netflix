.class public final Lo/Zx$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Zx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:Lo/Bc;

.field private final b:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method public constructor <init>(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Zx$TaskDescription;->a:Lo/Bc;

    iput-object p2, p0, Lo/Zx$TaskDescription;->b:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public final a()Lo/Bc;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/Zx$TaskDescription;->a:Lo/Bc;

    return-object v0
.end method

.method public final c()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/Zx$TaskDescription;->b:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method
