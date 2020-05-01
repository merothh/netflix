.class public final Lo/RA$TaskDescription;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RA;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/RA;


# direct methods
.method constructor <init>(Lo/RA;)V
    .locals 0

    iput-object p1, p0, Lo/RA$TaskDescription;->c:Lo/RA;

    .line 99
    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2}, Lo/Ai;->b(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 102
    iget-object p1, p0, Lo/RA$TaskDescription;->c:Lo/RA;

    invoke-static {p1}, Lo/RA;->a(Lo/RA;)V

    return-void
.end method
