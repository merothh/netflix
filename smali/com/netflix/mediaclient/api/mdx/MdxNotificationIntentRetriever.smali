.class public interface abstract Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;,
        Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;
    }
.end annotation


# virtual methods
.method public abstract a()Landroid/app/PendingIntent;
.end method

.method public abstract a(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;)Landroid/app/PendingIntent;
.end method

.method public abstract b()Landroid/app/PendingIntent;
.end method

.method public abstract c()Landroid/app/PendingIntent;
.end method

.method public abstract c(I)Landroid/app/PendingIntent;
.end method

.method public abstract c(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;)Landroid/app/PendingIntent;
.end method
