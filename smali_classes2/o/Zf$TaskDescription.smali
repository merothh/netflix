.class public final Lo/Zf$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Zf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:I

.field private final e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method public constructor <init>(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/Zf$TaskDescription;->a:I

    iput-object p2, p0, Lo/Zf$TaskDescription;->e:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/netflix/mediaclient/android/app/Status;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 223
    check-cast p2, Lcom/netflix/mediaclient/android/app/Status;

    :cond_0
    invoke-direct {p0, p1, p2}, Lo/Zf$TaskDescription;-><init>(ILcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 223
    iget-object v0, p0, Lo/Zf$TaskDescription;->e:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 222
    iget v0, p0, Lo/Zf$TaskDescription;->a:I

    return v0
.end method
