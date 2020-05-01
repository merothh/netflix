.class public final Lo/Cs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Cs$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/Cs$TaskDescription;


# instance fields
.field private final a:Lo/Cr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Cs$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Cs$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Cs;->d:Lo/Cs$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lo/Cr;

    invoke-direct {v0}, Lo/Cr;-><init>()V

    iput-object v0, p0, Lo/Cs;->a:Lo/Cr;

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/ContentAdvisory;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentAdvisory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lo/Cs;->a:Lo/Cr;

    invoke-virtual {v0, p1, p2}, Lo/Cr;->d(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/ContentAdvisory;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/netflix/model/leafs/advisory/RatingDetails;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "ratingDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lo/Cs;->a:Lo/Cr;

    invoke-virtual {v0, p1, p2}, Lo/Cr;->e(Lcom/netflix/model/leafs/advisory/RatingDetails;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryMessage"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lo/Cs;->a:Lo/Cr;

    invoke-virtual {v0, p1, p2, p3}, Lo/Cr;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
